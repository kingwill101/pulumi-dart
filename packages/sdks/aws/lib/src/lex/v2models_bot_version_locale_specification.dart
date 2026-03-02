// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2modelsBotVersionLocaleSpecification {
  final pulumi.Input<String> sourceBotVersion;

  /// Creates a new [V2modelsBotVersionLocaleSpecification].
  /// [sourceBotVersion] Required.
  V2modelsBotVersionLocaleSpecification({
    required this.sourceBotVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceBotVersion': sourceBotVersion,
    };
  }

  factory V2modelsBotVersionLocaleSpecification.fromMap(Map<String, dynamic> map) {
    return V2modelsBotVersionLocaleSpecification(
      sourceBotVersion: (map['sourceBotVersion'] as String).input(),
    );
  }
}

