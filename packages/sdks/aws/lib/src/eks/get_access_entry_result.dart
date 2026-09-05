// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessEntry.
class GetAccessEntryResult {
  /// ARN of the Access Entry.
  final String? accessEntryArn;
  final String? clusterName;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  final List<String>? kubernetesGroups;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final String? modifiedAt;
  final String? principalArn;
  final String? region;
  final Map<String, String>? tags;
  /// (Optional) Key-value map of resource tags, including those inherited from the provider `defaultTags` configuration block.
  final Map<String, String>? tagsAll;
  /// Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  final String? type;
  /// Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  final String? userName;

  /// Creates a new [GetAccessEntryResult].
  /// [accessEntryArn] ARN of the Access Entry.
  /// [clusterName] Optional.
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesGroups] List of string which can optionally specify the Kubernetes groups the user would belong to when creating an access entry.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [principalArn] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [tagsAll] (Optional) Key-value map of resource tags, including those inherited from the provider `defaultTags` configuration block.
  /// [type] Defaults to STANDARD which provides the standard workflow. EC2_LINUX, EC2_WINDOWS, FARGATE_LINUX types disallow users to input a username or groups, and prevent associations.
  /// [userName] Defaults to principal ARN if user is principal else defaults to assume-role/session-name is role is used.
  const GetAccessEntryResult({
    this.accessEntryArn,
    this.clusterName,
    this.createdAt,
    this.id,
    this.kubernetesGroups,
    this.modifiedAt,
    this.principalArn,
    this.region,
    this.tags,
    this.tagsAll,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEntryArn': ?accessEntryArn,
      'clusterName': ?clusterName,
      'createdAt': ?createdAt,
      'id': ?id,
      'kubernetesGroups': ?kubernetesGroups,
      'modifiedAt': ?modifiedAt,
      'principalArn': ?principalArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetAccessEntryResult.fromMap(Map<String, dynamic> map) {
    return GetAccessEntryResult(
      accessEntryArn: (() { final guardedValue = map['accessEntryArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubernetesGroups: (() { final guardedValue = map['kubernetesGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalArn: (() { final guardedValue = map['principalArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
