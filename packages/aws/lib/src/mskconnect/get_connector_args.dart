// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mskconnect_get_connector_get_connector_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_get_connector_get_connector_args_doc}
class GetConnectorArgs {
  /// Name of the connector.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConnectorArgs].
  /// [name] Name of the connector.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the resource.
  GetConnectorArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region, 'tags': ?tags};
  }

  factory GetConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectorArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
