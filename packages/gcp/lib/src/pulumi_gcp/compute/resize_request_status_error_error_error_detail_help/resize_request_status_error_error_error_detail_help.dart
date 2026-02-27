// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resize_request_status_error_error_error_detail_help_link/resize_request_status_error_error_error_detail_help_link.dart';

class ResizeRequestStatusErrorErrorErrorDetailHelp {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorErrorErrorDetailHelpLink>? links;

  ResizeRequestStatusErrorErrorErrorDetailHelp({
    this.links,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final linksValue = links;
    if (linksValue != null) {
      map['links'] = pulumi.Input.encodeList<
          ResizeRequestStatusErrorErrorErrorDetailHelpLink,
          Map<String, dynamic>>(linksValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetailHelp(
      links: map['links'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusErrorErrorErrorDetailHelpLink>(
              map['links'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
