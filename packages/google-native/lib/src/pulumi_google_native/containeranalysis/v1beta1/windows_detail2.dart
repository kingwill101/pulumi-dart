// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'knowledge_base2.dart';

class WindowsDetail2 {
  /// The CPE URI in [cpe format](https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar.
  final String cpeUri;

  /// The description of the vulnerability.
  final String? description;

  /// The names of the KBs which have hotfixes to mitigate this vulnerability. Note that there may be multiple hotfixes (and thus multiple KBs) that mitigate a given vulnerability. Currently any listed kb's presence is considered a fix.
  final List<KnowledgeBase2> fixingKbs;

  /// The name of the vulnerability.
  final String name;

  WindowsDetail2({
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
    map['fixingKbs'] = Input.encodeList<KnowledgeBase2, Map<String, dynamic>>(
        fixingKbs, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory WindowsDetail2.fromMap(Map<String, dynamic> map) {
    return WindowsDetail2(
      cpeUri: map['cpeUri'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      fixingKbs: Input.decodeList<KnowledgeBase2>(
          map['fixingKbs'],
          (value) =>
              KnowledgeBase2.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
