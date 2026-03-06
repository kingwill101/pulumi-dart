// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_list_service_group_ancestors_args_doc}
/// Arguments for listServiceGroupAncestors.
/// {@endtemplate}
/// {@macro pulumi_management_list_service_group_ancestors_args_doc}
class ListServiceGroupAncestorsArgs {
  /// ServiceGroup Name.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [ListServiceGroupAncestorsArgs].
  /// [serviceGroupName] ServiceGroup Name.
  const ListServiceGroupAncestorsArgs({
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceGroupName': serviceGroupName,
    };
  }

  factory ListServiceGroupAncestorsArgs.fromMap(Map<String, dynamic> map) {
    return ListServiceGroupAncestorsArgs(
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}

