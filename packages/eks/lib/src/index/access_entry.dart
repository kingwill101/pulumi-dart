// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_entry_type.dart';
import 'access_policy_association.dart';

/// Access entries allow an IAM principal to access your cluster.
///
/// You have the following options for authorizing an IAM principal to access Kubernetes objects on your cluster: Kubernetes role-based access control (RBAC), Amazon EKS, or both.
/// Kubernetes RBAC authorization requires you to create and manage Kubernetes Role , ClusterRole , RoleBinding , and ClusterRoleBinding objects, in addition to managing access entries. If you use Amazon EKS authorization exclusively, you don't need to create and manage Kubernetes Role , ClusterRole , RoleBinding , and ClusterRoleBinding objects.
class AccessEntry {
  /// The access policies to associate to the access entry.
  final Map<String, AccessPolicyAssociation>? accessPolicies;
  /// A list of groups within Kubernetes to which the IAM principal is mapped to.
  final List<String>? kubernetesGroups;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final String principalArn;
  /// The tags to apply to the AccessEntry.
  final Map<String, String>? tags;
  /// The type of the new access entry. Valid values are STANDARD, FARGATE_LINUX, EC2_LINUX, and EC2_WINDOWS.
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or kubernetesGroup, and prevent associating access policies.
  final AccessEntryType? type;
  /// Defaults to the principalArn if the principal is a user, else defaults to assume-role/session-name.
  final String? username;

  /// Creates a new [AccessEntry].
  /// [accessPolicies] The access policies to associate to the access entry.
  /// [kubernetesGroups] A list of groups within Kubernetes to which the IAM principal is mapped to.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [tags] The tags to apply to the AccessEntry.
  /// [type] The type of the new access entry. Valid values are STANDARD, FARGATE_LINUX, EC2_LINUX, and EC2_WINDOWS.
  /// [username] Defaults to the principalArn if the principal is a user, else defaults to assume-role/session-name.
  AccessEntry({
    this.accessPolicies,
    this.kubernetesGroups,
    required this.principalArn,
    this.tags,
    this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeMapValues<AccessPolicyAssociation, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'kubernetesGroups': ?kubernetesGroups,
      'principalArn': principalArn,
      'tags': ?tags,
      'type': ?type == null ? null : type!.value,
      'username': ?username,
    };
  }

  factory AccessEntry.fromMap(Map<String, dynamic> map) {
    return AccessEntry(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeMapValues<AccessPolicyAssociation>(map['accessPolicies'], (value) => AccessPolicyAssociation.fromMap((value as Map).cast<String, dynamic>())),
      kubernetesGroups: map['kubernetesGroups'] == null ? null : (map['kubernetesGroups'] as List).cast<String>(),
      principalArn: map['principalArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : AccessEntryType.fromValue(map['type'] as String),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

