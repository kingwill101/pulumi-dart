// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'help_link_response2.dart';

/// Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.
class HelpResponse2 {
  /// URL(s) pointing to additional information on handling the current error.
  final List<HelpLinkResponse2> links;

  HelpResponse2({
    required this.links,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['links'] = Input.encodeList<HelpLinkResponse2, Map<String, dynamic>>(
        links, (value) => value.toMap());
    return map;
  }

  factory HelpResponse2.fromMap(Map<String, dynamic> map) {
    return HelpResponse2(
      links: Input.decodeList<HelpLinkResponse2>(
          map['links'],
          (value) => HelpLinkResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
