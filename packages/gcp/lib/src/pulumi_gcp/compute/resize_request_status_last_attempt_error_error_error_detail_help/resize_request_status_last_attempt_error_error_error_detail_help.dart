// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resize_request_status_last_attempt_error_error_error_detail_help_link/resize_request_status_last_attempt_error_error_error_detail_help_link.dart';

class ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>?
      links;

  ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final linksValue = links;
    if (linksValue != null) {
      map['links'] = pulumi.Input.encodeList<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink,
          Map<String, dynamic>>(linksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp(
      links: map['links'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink>(
              map['links'],
              (value) =>
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
