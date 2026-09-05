// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_code_signing_config_allowed_publisher.dart';
import 'get_code_signing_config_policy.dart';

/// Result data returned by getCodeSigningConfig.
class GetCodeSigningConfigResult {
  /// List of allowed publishers as signing profiles for this code signing configuration. See below.
  final List<GetCodeSigningConfigAllowedPublisher>? allowedPublishers;
  final String? arn;
  /// Unique identifier for the code signing configuration.
  final String? configId;
  /// Code signing configuration description.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time that the code signing configuration was last modified.
  final String? lastModified;
  /// List of code signing policies that control the validation failure action for signature mismatch or expiry. See below.
  final List<GetCodeSigningConfigPolicy>? policies;
  final String? region;

  /// Creates a new [GetCodeSigningConfigResult].
  /// [allowedPublishers] List of allowed publishers as signing profiles for this code signing configuration. See below.
  /// [arn] Optional.
  /// [configId] Unique identifier for the code signing configuration.
  /// [description] Code signing configuration description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Date and time that the code signing configuration was last modified.
  /// [policies] List of code signing policies that control the validation failure action for signature mismatch or expiry. See below.
  /// [region] Optional.
  const GetCodeSigningConfigResult({
    this.allowedPublishers,
    this.arn,
    this.configId,
    this.description,
    this.id,
    this.lastModified,
    this.policies,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPublishers': ?(() { final guardedValue = allowedPublishers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCodeSigningConfigAllowedPublisher, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'configId': ?configId,
      'description': ?description,
      'id': ?id,
      'lastModified': ?lastModified,
      'policies': ?(() { final guardedValue = policies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCodeSigningConfigPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetCodeSigningConfigResult.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigResult(
      allowedPublishers: (() { final guardedValue = map['allowedPublishers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCodeSigningConfigAllowedPublisher>(guardedValue, (value) => GetCodeSigningConfigAllowedPublisher.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCodeSigningConfigPolicy>(guardedValue, (value) => GetCodeSigningConfigPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
