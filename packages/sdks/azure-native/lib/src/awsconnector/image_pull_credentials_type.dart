import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ImagePullCredentialsType implements pulumi.PulumiEnum<String> {
  cODEBUILD("CODEBUILD"),
  sERVICEROLE("SERVICE_ROLE");

  const ImagePullCredentialsType(this.wireValue);
  @override
  final String wireValue;

  static ImagePullCredentialsType fromValue(String value) {
    for (final item in ImagePullCredentialsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImagePullCredentialsType value: $value');
  }
}
