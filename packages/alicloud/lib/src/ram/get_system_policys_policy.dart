// ignore_for_file: unused_element, unnecessary_cast


class GetSystemPolicysPolicy {
  /// Number of references.
  final int attachmentCount;
  /// Creation time.
  final String createTime;
  /// The permission policy description.
  final String description;
  /// The ID of the resource supplied above.
  final String id;
  /// The permission policy name.
  final String policyName;
  /// Permission policy type.
  final String policyType;
  /// Modification time.
  final String updateDate;

  /// Creates a new [GetSystemPolicysPolicy].
  /// [attachmentCount] Number of references.
  /// [createTime] Creation time.
  /// [description] The permission policy description.
  /// [id] The ID of the resource supplied above.
  /// [policyName] The permission policy name.
  /// [policyType] Permission policy type.
  /// [updateDate] Modification time.
  GetSystemPolicysPolicy({
    required this.attachmentCount,
    required this.createTime,
    required this.description,
    required this.id,
    required this.policyName,
    required this.policyType,
    required this.updateDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'createTime': createTime,
      'description': description,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
      'updateDate': updateDate,
    };
  }

  factory GetSystemPolicysPolicy.fromMap(Map<String, dynamic> map) {
    return GetSystemPolicysPolicy(
      attachmentCount: map['attachmentCount'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
      updateDate: map['updateDate'] as String,
    );
  }
}

