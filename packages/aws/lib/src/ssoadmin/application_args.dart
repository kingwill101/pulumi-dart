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
    required String applicationProviderArn,
    String? clientToken,
    String? description,
    required String instanceArn,
    String? name,
    ApplicationPortalOptions? portalOptions,
    String? region,
    String? status,
    Map<String, String>? tags,
  })  : applicationProviderArn =
            pulumi.Input.asInput<String>(applicationProviderArn),
        clientToken = pulumi.Input.asOptionalInput<String>(clientToken),
        description = pulumi.Input.asOptionalInput<String>(description),
        instanceArn = pulumi.Input.asInput<String>(instanceArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        portalOptions = pulumi.Input.asOptionalInput<ApplicationPortalOptions>(
            portalOptions),
        region = pulumi.Input.asOptionalInput<String>(region),
        status = pulumi.Input.asOptionalInput<String>(status),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationProviderArn'] = applicationProviderArn;
    final clientTokenValue = clientToken;
    if (clientTokenValue != null) {
      map['clientToken'] = clientTokenValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceArn'] = instanceArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final portalOptionsValue = portalOptions;
    if (portalOptionsValue != null) {
      map['portalOptions'] = pulumi.Input.mapOptionalInputValue<
          ApplicationPortalOptions,
          Map<String, dynamic>>(portalOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationProviderArn: map['applicationProviderArn'] as String,
      clientToken:
          map['clientToken'] == null ? null : map['clientToken'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceArn: map['instanceArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      portalOptions: map['portalOptions'] == null
          ? null
          : ApplicationPortalOptions.fromMap(
              (map['portalOptions'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
