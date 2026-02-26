// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkflow.
class GetWorkflowResult2 {
  /// The timestamp of when the workflow was created.
  final String createTime;

  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final String description;

  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores and dashes. Label keys must start with a letter. International characters are allowed.
  final Map<String, String> labels;

  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}
  final String name;

  /// The timestamp that the latest revision of the workflow was created.
  final String revisionCreateTime;

  /// The revision of the workflow. A new revision of a workflow is created as a result of updating the following properties of a workflow: - Service account - Workflow code to be executed The format is "000001-a4d", where the first 6 characters define the zero-padded revision ordinal number. They are followed by a hyphen and 3 hexadecimal random characters.
  final String revisionId;

  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final String serviceAccount;

  /// Workflow code to be executed. The size limit is 128KB.
  final String sourceContents;

  /// State of the workflow deployment.
  final String state;

  /// The last update timestamp of the workflow.
  final String updateTime;

  GetWorkflowResult2({
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.serviceAccount,
    required this.sourceContents,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['revisionCreateTime'] = revisionCreateTime;
    map['revisionId'] = revisionId;
    map['serviceAccount'] = serviceAccount;
    map['sourceContents'] = sourceContents;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetWorkflowResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      serviceAccount: map['serviceAccount'] as String,
      sourceContents: map['sourceContents'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
