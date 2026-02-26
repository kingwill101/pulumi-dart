// ignore_for_file: unused_element, unnecessary_cast

class RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo {
  /// (Output)
  /// The logical grouping to which the "reason" belongs. The error domain is typically the registered service name of the tool or product that generates the error. Example: "pubsub.googleapis.com".
  final String? domain;

  /// (Output)
  /// Additional structured details about this error.
  final Map<String, String>? metadatas;

  /// (Output)
  /// The reason of the error. This is a constant value that identifies the proximate cause of the error. Error reasons are unique within a particular domain of errors.
  final String? reason;

  RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo({
    this.domain,
    this.metadatas,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final metadatasValue = metadatas;
    if (metadatasValue != null) {
      map['metadatas'] = metadatasValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    return map;
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo(
      domain: map['domain'] == null ? null : map['domain'] as String,
      metadatas: map['metadatas'] == null
          ? null
          : (map['metadatas'] as Map).cast<String, String>(),
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
