// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttachmentConsumerAcceptList {
  /// The number of consumer forwarding rules the consumer project can
  /// create.
  final int connectionLimit;

  /// The network that is allowed to connect to this service attachment.
  /// Only one of<span pulumi-lang-nodejs=" projectIdOrNum " pulumi-lang-dotnet=" ProjectIdOrNum " pulumi-lang-go=" projectIdOrNum " pulumi-lang-python=" project_id_or_num " pulumi-lang-yaml=" projectIdOrNum " pulumi-lang-java=" projectIdOrNum "> project_id_or_num </span>and<span pulumi-lang-nodejs=" networkUrl " pulumi-lang-dotnet=" NetworkUrl " pulumi-lang-go=" networkUrl " pulumi-lang-python=" network_url " pulumi-lang-yaml=" networkUrl " pulumi-lang-java=" networkUrl "> network_url </span>may be set.
  final String? networkUrl;

  /// A project that is allowed to connect to this service attachment.
  /// Only one of<span pulumi-lang-nodejs=" projectIdOrNum " pulumi-lang-dotnet=" ProjectIdOrNum " pulumi-lang-go=" projectIdOrNum " pulumi-lang-python=" project_id_or_num " pulumi-lang-yaml=" projectIdOrNum " pulumi-lang-java=" projectIdOrNum "> project_id_or_num </span>and<span pulumi-lang-nodejs=" networkUrl " pulumi-lang-dotnet=" NetworkUrl " pulumi-lang-go=" networkUrl " pulumi-lang-python=" network_url " pulumi-lang-yaml=" networkUrl " pulumi-lang-java=" networkUrl "> network_url </span>may be set.
  final String? projectIdOrNum;

  ServiceAttachmentConsumerAcceptList({
    required this.connectionLimit,
    this.networkUrl,
    this.projectIdOrNum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionLimit'] = connectionLimit;
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

  factory ServiceAttachmentConsumerAcceptList.fromMap(
      Map<String, dynamic> map) {
    return ServiceAttachmentConsumerAcceptList(
      connectionLimit: map['connectionLimit'] as int,
      networkUrl:
          map['networkUrl'] == null ? null : map['networkUrl'] as String,
      projectIdOrNum: map['projectIdOrNum'] == null
          ? null
          : map['projectIdOrNum'] as String,
    );
  }
}
