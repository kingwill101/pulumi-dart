// ignore_for_file: unused_element, unnecessary_cast

class ResourceSetResourceDnsTargetResourceTargetResourceR53Resource {
  /// Domain name that is targeted.
  final String? domainName;

  /// Resource record set ID that is targeted.
  final String? recordSetId;

  ResourceSetResourceDnsTargetResourceTargetResourceR53Resource({
    this.domainName,
    this.recordSetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final recordSetIdValue = recordSetId;
    if (recordSetIdValue != null) {
      map['recordSetId'] = recordSetIdValue;
    }
    return map;
  }

  factory ResourceSetResourceDnsTargetResourceTargetResourceR53Resource.fromMap(
      Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResourceR53Resource(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      recordSetId:
          map['recordSetId'] == null ? null : map['recordSetId'] as String,
    );
  }
}
