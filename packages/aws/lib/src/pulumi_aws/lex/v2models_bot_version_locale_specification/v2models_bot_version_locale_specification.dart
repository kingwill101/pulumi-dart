// ignore_for_file: unused_element, unnecessary_cast

class V2modelsBotVersionLocaleSpecification {
  final String sourceBotVersion;

  V2modelsBotVersionLocaleSpecification({
    required this.sourceBotVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceBotVersion'] = sourceBotVersion;
    return map;
  }

  factory V2modelsBotVersionLocaleSpecification.fromMap(
      Map<String, dynamic> map) {
    return V2modelsBotVersionLocaleSpecification(
      sourceBotVersion: map['sourceBotVersion'] as String,
    );
  }
}
