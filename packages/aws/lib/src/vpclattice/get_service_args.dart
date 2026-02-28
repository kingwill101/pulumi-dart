// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Service name.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID or Amazon Resource Name (ARN) of the service.
  final pulumi.Input<String>? serviceIdentifier;

  /// List of tags associated with the service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServiceArgs].
  /// [name] Service name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] ID or Amazon Resource Name (ARN) of the service.
  /// [tags] List of tags associated with the service.
  GetServiceArgs({
    String? name,
    String? region,
    String? serviceIdentifier,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceIdentifier =
            pulumi.Input.asOptionalInput<String>(serviceIdentifier),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceIdentifier: map['serviceIdentifier'] == null
          ? null
          : map['serviceIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
