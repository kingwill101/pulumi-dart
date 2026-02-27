// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_portal_options/application_portal_options.dart';

/// The set of arguments for Application.
class ApplicationSsoadminArgs {
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

  ApplicationSsoadminArgs({
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

  factory ApplicationSsoadminArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSsoadminArgs(
      applicationProviderArn:
          pulumi.Input.asInput<String>(map['applicationProviderArn']),
      clientToken: pulumi.Input.asOptionalInput<String>(map['clientToken']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      portalOptions: pulumi.Input.asOptionalInput<ApplicationPortalOptions>(
          map['portalOptions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
