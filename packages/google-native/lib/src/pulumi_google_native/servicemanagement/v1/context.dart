// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'context_rule.dart';

/// `Context` defines which contexts an API requests. Example: context: rules: - selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`. Available context types are defined in package `google.rpc.context`. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: "google.example.library.v1.LibraryService.CreateBook" allowed_request_extensions: - google.foo.v1.NewExtension allowed_response_extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.
class Context {
  /// A list of RPC context rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<ContextRule>? rules;

  Context({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.encodeList<ContextRule, Map<String, dynamic>>(
          rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Context.fromMap(Map<String, dynamic> map) {
    return Context(
      rules: map['rules'] == null
          ? null
          : Input.decodeList<ContextRule>(
              map['rules'],
              (value) =>
                  ContextRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
