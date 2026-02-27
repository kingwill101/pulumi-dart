// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'knowledge_base.dart';

class WindowsDetail {
  /// The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability affects.
  final String cpeUri;

  /// The description of this vulnerability.
  final String? description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed KBs presence is considered a fix.
  final List<KnowledgeBase> fixingKbs;

  /// The name of this vulnerability.
  final String name;

  WindowsDetail({
    required this.cpeUri,
    this.description,
    required this.fixingKbs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpeUri'] = cpeUri;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fixingKbs'] = Input.encodeList<KnowledgeBase, Map<String, dynamic>>(
        fixingKbs, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory WindowsDetail.fromMap(Map<String, dynamic> map) {
    return WindowsDetail(
      cpeUri: map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      fixingKbs: Input.decodeList<KnowledgeBase>(
          map['fixingKbs'],
          (value) =>
              KnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
