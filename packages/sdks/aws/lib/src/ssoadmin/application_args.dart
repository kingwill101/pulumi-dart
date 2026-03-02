// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_portal_options.dart';

/// {@template pulumi_ssoadmin_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_application_application_args_doc}
class ApplicationArgs {
  /// ARN of the application provider.
  final pulumi.Input<String> applicationProviderArn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final pulumi.Input<String>? clientToken;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String> instanceArn;
  /// Name of the application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Options for the portal associated with an application. See `portal_options` below.
  final pulumi.Input<ApplicationPortalOptions>? portalOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationProviderArn] ARN of the application provider.
  /// [clientToken] A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  /// [description] Description of the application.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the application.
  /// [portalOptions] Options for the portal associated with an application. See `portal_options` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the application. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ApplicationArgs({
    required this.applicationProviderArn,
    this.clientToken,
    this.description,
    required this.instanceArn,
    this.name,
    this.portalOptions,
    this.region,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProviderArn': applicationProviderArn,
      'clientToken': ?clientToken,
      'description': ?description,
      'instanceArn': instanceArn,
      'name': ?name,
      'portalOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationPortalOptions, Map<String, dynamic>>(portalOptions, (value) => value.toMap()),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationProviderArn: (map['applicationProviderArn'] as String).input(),
      clientToken: map['clientToken'] == null ? null : (map['clientToken'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceArn: (map['instanceArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      portalOptions: map['portalOptions'] == null ? null : (ApplicationPortalOptions.fromMap((map['portalOptions'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

