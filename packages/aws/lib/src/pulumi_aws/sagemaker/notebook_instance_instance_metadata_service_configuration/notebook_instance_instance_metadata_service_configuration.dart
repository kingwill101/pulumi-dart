// ignore_for_file: unused_element, unnecessary_cast

class NotebookInstanceInstanceMetadataServiceConfiguration {
  /// Indicates the minimum IMDS version that the notebook instance supports. When passed "1" is passed. This means that both IMDSv1 and IMDSv2 are supported. Valid values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>.
  final String? minimumInstanceMetadataServiceVersion;

  NotebookInstanceInstanceMetadataServiceConfiguration({
    this.minimumInstanceMetadataServiceVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumInstanceMetadataServiceVersionValue =
        minimumInstanceMetadataServiceVersion;
    if (minimumInstanceMetadataServiceVersionValue != null) {
      map['minimumInstanceMetadataServiceVersion'] =
          minimumInstanceMetadataServiceVersionValue;
    }
    return map;
  }

  factory NotebookInstanceInstanceMetadataServiceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return NotebookInstanceInstanceMetadataServiceConfiguration(
      minimumInstanceMetadataServiceVersion:
          map['minimumInstanceMetadataServiceVersion'] == null
              ? null
              : map['minimumInstanceMetadataServiceVersion'] as String,
    );
  }
}
