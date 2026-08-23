/// Property value
enum ImagePullCredentialsType {
  cODEBUILD("CODEBUILD"),
  sERVICEROLE("SERVICE_ROLE");

  const ImagePullCredentialsType(this.wireValue);
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
