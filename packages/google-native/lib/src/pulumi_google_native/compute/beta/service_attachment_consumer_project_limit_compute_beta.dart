// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentConsumerProjectLimitComputeBeta {
  /// The value of the limit to set.
  final int? connectionLimit;

  /// The network URL for the network to set the limit for.
  final String? networkUrl;

  /// The project id or number for the project to set the limit for.
  final String? projectIdOrNum;

  ServiceAttachmentConsumerProjectLimitComputeBeta({
    this.connectionLimit,
    this.networkUrl,
    this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionLimitValue = connectionLimit;
    if (connectionLimitValue != null) {
      map['connectionLimit'] = connectionLimitValue;
    }
    final networkUrlValue = networkUrl;
    if (networkUrlValue != null) {
      map['networkUrl'] = networkUrlValue;
    }
    final projectIdOrNumValue = projectIdOrNum;
    if (projectIdOrNumValue != null) {
      map['projectIdOrNum'] = projectIdOrNumValue;
    }
    return map;
  }

  factory ServiceAttachmentConsumerProjectLimitComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ServiceAttachmentConsumerProjectLimitComputeBeta(
      connectionLimit:
          map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      networkUrl:
          map['networkUrl'] == null ? null : map['networkUrl'] as String,
      projectIdOrNum: map['projectIdOrNum'] == null
          ? null
          : map['projectIdOrNum'] as String,
    );
  }
}
