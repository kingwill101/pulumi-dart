// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_parent_group_info.dart';

/// The details of a management group used during creation.
class CreateManagementGroupDetails {
  /// (Optional) The ID of the parent management group used during creation.
  final pulumi.Input<CreateParentGroupInfo>? parent;

  /// Creates a new [CreateManagementGroupDetails].
  /// [parent] (Optional) The ID of the parent management group used during creation.
  CreateManagementGroupDetails({
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': ?pulumi.Input.mapOptionalInputValue<CreateParentGroupInfo, Map<String, dynamic>>(parent, (value) => value.toMap()),
    };
  }

  factory CreateManagementGroupDetails.fromMap(Map<String, dynamic> map) {
    return CreateManagementGroupDetails(
      parent: map['parent'] == null ? null : (CreateParentGroupInfo.fromMap((map['parent'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

