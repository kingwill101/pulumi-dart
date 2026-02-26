// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Activation.
class ActivationArgs {
  /// The description of the resource that you want to register.
  final Input<String>? description;

  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  final Input<String>? expirationDate;

  /// The IAM Role to attach to the managed instance.
  final Input<String> iamRole;

  /// The default name of the registered managed instance.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  final Input<int>? registrationLimit;

  /// A map of tags to assign to the object. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ActivationArgs({
    this.description,
    this.expirationDate,
    required this.iamRole,
    this.name,
    this.region,
    this.registrationLimit,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expirationDateValue = expirationDate;
    if (expirationDateValue != null) {
      map['expirationDate'] = expirationDateValue;
    }
    map['iamRole'] = iamRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registrationLimitValue = registrationLimit;
    if (registrationLimitValue != null) {
      map['registrationLimit'] = registrationLimitValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ActivationArgs.fromMap(Map<String, dynamic> map) {
    return ActivationArgs(
      description: Input.asOptionalInput<String>(map['description']),
      expirationDate: Input.asOptionalInput<String>(map['expirationDate']),
      iamRole: Input.asInput<String>(map['iamRole']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      registrationLimit: Input.asOptionalInput<int>(map['registrationLimit']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
