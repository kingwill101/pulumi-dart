// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceVpclatticeArgs {
  /// Service name.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID or Amazon Resource Name (ARN) of the service.
  final pulumi.Input<String>? serviceIdentifier;

  /// List of tags associated with the service.
  final pulumi.Input<Map<String, String>>? tags;

  GetServiceVpclatticeArgs({
    this.name,
    this.region,
    this.serviceIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceIdentifierValue = serviceIdentifier;
    if (serviceIdentifierValue != null) {
      map['serviceIdentifier'] = serviceIdentifierValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetServiceVpclatticeArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceVpclatticeArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['serviceIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
