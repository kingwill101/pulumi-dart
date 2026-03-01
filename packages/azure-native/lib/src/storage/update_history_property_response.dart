// ignore_for_file: unused_element, unnecessary_cast


/// An update history of the ImmutabilityPolicy of a blob container.
class UpdateHistoryPropertyResponse {
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  final bool? allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  final bool? allowProtectedAppendWritesAll;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final int immutabilityPeriodSinceCreationInDays;
  /// Returns the Object ID of the user who updated the ImmutabilityPolicy.
  final String objectIdentifier;
  /// Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy.
  final String tenantId;
  /// Returns the date and time the ImmutabilityPolicy was updated.
  final String timestamp;
  /// The ImmutabilityPolicy update type of a blob container, possible values include: put, lock and extend.
  final String update;
  /// Returns the User Principal Name of the user who updated the ImmutabilityPolicy.
  final String upn;

  /// Creates a new [UpdateHistoryPropertyResponse].
  /// [allowProtectedAppendWrites] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  /// [allowProtectedAppendWritesAll] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [objectIdentifier] Returns the Object ID of the user who updated the ImmutabilityPolicy.
  /// [tenantId] Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy.
  /// [timestamp] Returns the date and time the ImmutabilityPolicy was updated.
  /// [update] The ImmutabilityPolicy update type of a blob container, possible values include: put, lock and extend.
  /// [upn] Returns the User Principal Name of the user who updated the ImmutabilityPolicy.
  UpdateHistoryPropertyResponse({
    this.allowProtectedAppendWrites,
    this.allowProtectedAppendWritesAll,
    required this.immutabilityPeriodSinceCreationInDays,
    required this.objectIdentifier,
    required this.tenantId,
    required this.timestamp,
    required this.update,
    required this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'immutabilityPeriodSinceCreationInDays': immutabilityPeriodSinceCreationInDays,
      'objectIdentifier': objectIdentifier,
      'tenantId': tenantId,
      'timestamp': timestamp,
      'update': update,
      'upn': upn,
    };
  }

  factory UpdateHistoryPropertyResponse.fromMap(Map<String, dynamic> map) {
    return UpdateHistoryPropertyResponse(
      allowProtectedAppendWrites: map['allowProtectedAppendWrites'] == null ? null : map['allowProtectedAppendWrites'] as bool,
      allowProtectedAppendWritesAll: map['allowProtectedAppendWritesAll'] == null ? null : map['allowProtectedAppendWritesAll'] as bool,
      immutabilityPeriodSinceCreationInDays: map['immutabilityPeriodSinceCreationInDays'] as int,
      objectIdentifier: map['objectIdentifier'] as String,
      tenantId: map['tenantId'] as String,
      timestamp: map['timestamp'] as String,
      update: map['update'] as String,
      upn: map['upn'] as String,
    );
  }
}

