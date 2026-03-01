// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'help_link_response.dart';

/// Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.
class HelpResponse {
  /// URL(s) pointing to additional information on handling the current error.
  final List<HelpLinkResponse> links;

  /// Creates a new [HelpResponse].
  /// [links] URL(s) pointing to additional information on handling the current error.
  HelpResponse({required this.links});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links': pulumi.Input.encodeList<HelpLinkResponse, Map<String, dynamic>>(
        links,
        (value) => value.toMap(),
      ),
    };
  }

  factory HelpResponse.fromMap(Map<String, dynamic> map) {
    return HelpResponse(
      links: pulumi.Input.decodeList<HelpLinkResponse>(
        map['links'],
        (value) =>
            HelpLinkResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
