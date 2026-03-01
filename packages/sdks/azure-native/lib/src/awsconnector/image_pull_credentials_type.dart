/// Property value
enum ImagePullCredentialsType {
  cODEBUILD("CODEBUILD"),
  sERVICEROLE("SERVICE_ROLE");

  const ImagePullCredentialsType(this.value);
  final String value;

  static ImagePullCredentialsType fromValue(String value) {
    for (final item in ImagePullCredentialsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImagePullCredentialsType value: $value');
  }
}

