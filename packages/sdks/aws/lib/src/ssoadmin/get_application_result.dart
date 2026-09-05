// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_portal_option.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// AWS account ID.
  final String? applicationAccount;
  final String? applicationArn;
  /// ARN of the application provider.
  final String? applicationProviderArn;
  /// Description of the application.
  final String? description;
  /// ARN of the application.
  final String? id;
  /// ARN of the instance of IAM Identity Center.
  final String? instanceArn;
  /// Name of the application.
  final String? name;
  /// Options for the portal associated with an application. See `portalOptions` Block below.
  final List<GetApplicationPortalOption>? portalOptions;
  final String? region;
  /// Status of the application.
  final String? status;

  /// Creates a new [GetApplicationResult].
  /// [applicationAccount] AWS account ID.
  /// [applicationArn] Optional.
  /// [applicationProviderArn] ARN of the application provider.
  /// [description] Description of the application.
  /// [id] ARN of the application.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the application.
  /// [portalOptions] Options for the portal associated with an application. See `portalOptions` Block below.
  /// [region] Optional.
  /// [status] Status of the application.
  const GetApplicationResult({
    this.applicationAccount,
    this.applicationArn,
    this.applicationProviderArn,
    this.description,
    this.id,
    this.instanceArn,
    this.name,
    this.portalOptions,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccount': ?applicationAccount,
      'applicationArn': ?applicationArn,
      'applicationProviderArn': ?applicationProviderArn,
      'description': ?description,
      'id': ?id,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'portalOptions': ?(() { final guardedValue = portalOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationPortalOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationAccount: (() { final guardedValue = map['applicationAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationProviderArn: (() { final guardedValue = map['applicationProviderArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalOptions: (() { final guardedValue = map['portalOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationPortalOption>(guardedValue, (value) => GetApplicationPortalOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
