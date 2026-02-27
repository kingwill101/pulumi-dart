// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_portal_options/application_portal_options.dart';

/// The set of arguments for Application.
class ApplicationArgs10 {
  /// ARN of the application provider.
  final Input<String> applicationProviderArn;

  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final Input<String>? clientToken;

  /// Description of the application.
  final Input<String>? description;

  /// ARN of the instance of IAM Identity Center.
  final Input<String> instanceArn;

  /// Name of the application.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Options for the portal associated with an application. See `portal_options` below.
  final Input<ApplicationPortalOptions>? portalOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  final Input<String>? status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ApplicationArgs10({
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
      map['portalOptions'] = Input.mapOptionalInputValue<
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

  factory ApplicationArgs10.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs10(
      applicationProviderArn:
          Input.asInput<String>(map['applicationProviderArn']),
      clientToken: Input.asOptionalInput<String>(map['clientToken']),
      description: Input.asOptionalInput<String>(map['description']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      name: Input.asOptionalInput<String>(map['name']),
      portalOptions:
          Input.asOptionalInput<ApplicationPortalOptions>(map['portalOptions']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
