/// ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
enum ConsistencyModeTypes {
  crashConsistent("CrashConsistent"),
  fileSystemConsistent("FileSystemConsistent"),
  applicationConsistent("ApplicationConsistent");

  const ConsistencyModeTypes(this.value);
  final String value;

  static ConsistencyModeTypes fromValue(String value) {
    for (final item in ConsistencyModeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsistencyModeTypes value: $value');
  }
}

