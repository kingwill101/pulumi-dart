// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wiki documentation details.
class WikiDocumentationContractResponse {
  /// Documentation Identifier
  final pulumi.Input<String>? documentationId;

  /// Creates a new [WikiDocumentationContractResponse].
  /// [documentationId] Documentation Identifier
  WikiDocumentationContractResponse({this.documentationId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'documentationId': ?documentationId};
  }

  factory WikiDocumentationContractResponse.fromMap(Map<String, dynamic> map) {
    return WikiDocumentationContractResponse(
      documentationId: (() {
        final guardedValue = map['documentationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
