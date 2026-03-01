// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_er_er_args_doc}
/// The set of arguments for Er.
/// {@endtemplate}
/// {@macro pulumi_eflo_er_er_args_doc}
class ErArgs {
  /// Description.
  final pulumi.Input<String>? description;
  /// Lingjun HUB name
  final pulumi.Input<String> erName;
  /// Primary zone
  final pulumi.Input<String> masterZoneId;
  /// The ID of the resource group instance.
  final pulumi.Input<String>? resourceGroupId;
  /// Label List
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ErArgs].
  /// [description] Description.
  /// [erName] Lingjun HUB name
  /// [masterZoneId] Primary zone
  /// [resourceGroupId] The ID of the resource group instance.
  /// [tags] Label List
  ErArgs({
    String? description,
    required String erName,
    required String masterZoneId,
    String? resourceGroupId,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      erName = pulumi.Input.asInput<String>(erName),
      masterZoneId = pulumi.Input.asInput<String>(masterZoneId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'erName': erName,
      'masterZoneId': masterZoneId,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory ErArgs.fromMap(Map<String, dynamic> map) {
    return ErArgs(
      description: map['description'] == null ? null : map['description'] as String,
      erName: map['erName'] as String,
      masterZoneId: map['masterZoneId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

