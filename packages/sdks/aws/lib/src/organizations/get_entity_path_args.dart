// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_entity_path_get_entity_path_args_doc}
/// Arguments for getEntityPath.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_entity_path_get_entity_path_args_doc}
class GetEntityPathArgs {
  /// Entity ID. Must be an organizational unit (OU) or AWS account ID.
  final pulumi.Input<String> entityId;

  /// Creates a new [GetEntityPathArgs].
  /// [entityId] Entity ID. Must be an organizational unit (OU) or AWS account ID.
  GetEntityPathArgs({
    required pulumi.Output<String> entityId,
  }) :
      entityId = pulumi.Input.asInput<String>(entityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
    };
  }

  factory GetEntityPathArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityPathArgs(
      entityId: pulumi.Output.create<String>(map['entityId'] as String),
    );
  }
}

