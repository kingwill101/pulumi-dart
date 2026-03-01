// ignore_for_file: unused_element, unnecessary_cast

class ApplicationDataSource {
  /// The Amazon Resource Name (ARN) of the OpenSearch domain or collection. Must be between 20 and 2048 characters.
  final String? dataSourceArn;

  /// A detailed description of the data source. Must be at most 1000 characters and contain only alphanumeric characters, underscores, spaces, and the following special characters: `@#%*+=:?./!-`.
  final String? dataSourceDescription;

  /// Creates a new [ApplicationDataSource].
  /// [dataSourceArn] The Amazon Resource Name (ARN) of the OpenSearch domain or collection. Must be between 20 and 2048 characters.
  /// [dataSourceDescription] A detailed description of the data source. Must be at most 1000 characters and contain only alphanumeric characters, underscores, spaces, and the following special characters: `@#%*+=:?./!-`.
  ApplicationDataSource({this.dataSourceArn, this.dataSourceDescription});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceArn': ?dataSourceArn,
      'dataSourceDescription': ?dataSourceDescription,
    };
  }

  factory ApplicationDataSource.fromMap(Map<String, dynamic> map) {
    return ApplicationDataSource(
      dataSourceArn: map['dataSourceArn'] == null
          ? null
          : map['dataSourceArn'] as String,
      dataSourceDescription: map['dataSourceDescription'] == null
          ? null
          : map['dataSourceDescription'] as String,
    );
  }
}
