// ignore_for_file: unused_element, unnecessary_cast

class RowAccessPolicyReferenceResponse {
  /// The ID of the dataset containing this row access policy.
  final String datasetId;

  /// The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final String policyId;

  /// The ID of the project containing this row access policy.
  final String project;

  /// The ID of the table containing this row access policy.
  final String tableId;

  RowAccessPolicyReferenceResponse({
    required this.datasetId,
    required this.policyId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['policyId'] = policyId;
    map['project'] = project;
    map['tableId'] = tableId;
    return map;
  }

  factory RowAccessPolicyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return RowAccessPolicyReferenceResponse(
      datasetId: map['datasetId'] as String,
      policyId: map['policyId'] as String,
      project: map['project'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
