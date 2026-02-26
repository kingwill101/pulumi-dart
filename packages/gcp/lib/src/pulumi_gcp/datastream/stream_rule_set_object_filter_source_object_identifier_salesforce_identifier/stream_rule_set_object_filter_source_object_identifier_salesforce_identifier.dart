// ignore_for_file: unused_element, unnecessary_cast

class StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier {
  /// The Salesforce object name.
  final String objectName;

  StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier({
    required this.objectName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectName'] = objectName;
    return map;
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier.fromMap(
      Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierSalesforceIdentifier(
      objectName: map['objectName'] as String,
    );
  }
}
