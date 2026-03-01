// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationsmanagement_get_management_association_args_doc}
/// Arguments for getManagementAssociation.
/// {@endtemplate}
/// {@macro pulumi_operationsmanagement_get_management_association_args_doc}
class GetManagementAssociationArgs {
  /// User ManagementAssociation Name.
  final pulumi.Input<String> managementAssociationName;
  /// Provider name for the parent resource.
  final pulumi.Input<String> providerName;
  /// The name of the resource group to get. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parent resource name.
  final pulumi.Input<String> resourceName;
  /// Resource type for the parent resource
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetManagementAssociationArgs].
  /// [managementAssociationName] User ManagementAssociation Name.
  /// [providerName] Provider name for the parent resource.
  /// [resourceGroupName] The name of the resource group to get. The name is case insensitive.
  /// [resourceName] Parent resource name.
  /// [resourceType] Resource type for the parent resource
  GetManagementAssociationArgs({
    required String managementAssociationName,
    required String providerName,
    required String resourceGroupName,
    required String resourceName,
    required String resourceType,
  }) :
      managementAssociationName = pulumi.Input.asInput<String>(managementAssociationName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementAssociationName': managementAssociationName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceType': resourceType,
    };
  }

  factory GetManagementAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementAssociationArgs(
      managementAssociationName: map['managementAssociationName'] as String,
      providerName: map['providerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

