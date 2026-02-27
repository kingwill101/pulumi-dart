// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../edge_cache_origin_origin_override_action_header_action_request_headers_to_add/edge_cache_origin_origin_override_action_header_action_request_headers_to_add.dart';

class EdgeCacheOriginOriginOverrideActionHeaderAction {
  /// Describes a header to add.
  /// You may add a maximum of 25 request headers.
  /// Structure is documented below.
  final List<
          EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd>?
      requestHeadersToAdds;

  EdgeCacheOriginOriginOverrideActionHeaderAction({
    this.requestHeadersToAdds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestHeadersToAddsValue = requestHeadersToAdds;
    if (requestHeadersToAddsValue != null) {
      map['requestHeadersToAdds'] = pulumi.Input.encodeList<
          EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd,
          Map<String,
              dynamic>>(requestHeadersToAddsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EdgeCacheOriginOriginOverrideActionHeaderAction.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheOriginOriginOverrideActionHeaderAction(
      requestHeadersToAdds: map['requestHeadersToAdds'] == null
          ? null
          : pulumi.Input.decodeList<
                  EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd>(
              map['requestHeadersToAdds'],
              (value) =>
                  EdgeCacheOriginOriginOverrideActionHeaderActionRequestHeadersToAdd
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
