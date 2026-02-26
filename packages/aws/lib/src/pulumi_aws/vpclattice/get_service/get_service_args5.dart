// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getService.
class GetServiceArgs5 {
  /// Service name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID or Amazon Resource Name (ARN) of the service.
  final Input<String>? serviceIdentifier;

  /// List of tags associated with the service.
  final Input<Map<String, String>>? tags;

  GetServiceArgs5({
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

  factory GetServiceArgs5.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs5(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceIdentifier:
          Input.asOptionalInput<String>(map['serviceIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
