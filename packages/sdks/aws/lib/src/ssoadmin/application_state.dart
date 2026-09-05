// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_portal_options.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// AWS account ID.
  final pulumi.Input<String?>? applicationAccount;
  /// (**Deprecated** Reference `arn` instead) ARN of the application.
  final pulumi.Input<String?>? applicationArn;
  /// ARN of the application provider.
  final pulumi.Input<String?>? applicationProviderArn;
  /// ARN of the application.
  final pulumi.Input<String?>? arn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final pulumi.Input<String?>? clientToken;
  /// Description of the application.
  final pulumi.Input<String?>? description;
  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String?>? instanceArn;
  /// Name of the application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Options for the portal associated with an application. See `portalOptions` below.
  final pulumi.Input<ApplicationPortalOptions?>? portalOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String?>? status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [applicationAccount] AWS account ID.
  /// [applicationArn] (**Deprecated** Reference `arn` instead) ARN of the application.
  /// [applicationProviderArn] ARN of the application provider.
  /// [arn] ARN of the application.
  /// [clientToken] A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  /// [description] Description of the application.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the application.
  /// [portalOptions] Options for the portal associated with an application. See `portalOptions` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the application. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ApplicationState({
    this.applicationAccount,
    this.applicationArn,
    this.applicationProviderArn,
    this.arn,
    this.clientToken,
    this.description,
    this.instanceArn,
    this.name,
    this.portalOptions,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccount': ?applicationAccount,
      'applicationArn': ?applicationArn,
      'applicationProviderArn': ?applicationProviderArn,
      'arn': ?arn,
      'clientToken': ?clientToken,
      'description': ?description,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'portalOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationPortalOptions, Map<String, dynamic>>(portalOptions, (value) => value.toMap()),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationAccount: (() { final guardedValue = map['applicationAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationProviderArn: (() { final guardedValue = map['applicationProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientToken: (() { final guardedValue = map['clientToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portalOptions: (() { final guardedValue = map['portalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationPortalOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
