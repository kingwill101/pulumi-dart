// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_base_response.dart';

class WindowsDetailResponse {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final String cpeUri;

  /// The description of this vulnerability.
  final String description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  final List<KnowledgeBaseResponse> fixingKbs;

  /// The name of this vulnerability.
  final String name;

  /// Creates a new [WindowsDetailResponse].
  /// [cpeUri] The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  /// [description] The description of this vulnerability.
  /// [fixingKbs] The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  /// [name] The name of this vulnerability.
  WindowsDetailResponse({
    required this.cpeUri,
    required this.description,
    required this.fixingKbs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpeUri'] = cpeUri;
    map['description'] = description;
    map['fixingKbs'] =
        pulumi.Input.encodeList<KnowledgeBaseResponse, Map<String, dynamic>>(
            fixingKbs, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory WindowsDetailResponse.fromMap(Map<String, dynamic> map) {
    return WindowsDetailResponse(
      cpeUri: map['cpeUri'] as String,
      description: map['description'] as String,
      fixingKbs: pulumi.Input.decodeList<KnowledgeBaseResponse>(
          map['fixingKbs'],
          (value) => KnowledgeBaseResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
