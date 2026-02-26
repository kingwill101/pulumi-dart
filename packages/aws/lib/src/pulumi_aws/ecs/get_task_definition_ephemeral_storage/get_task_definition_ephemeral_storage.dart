// ignore_for_file: unused_element, unnecessary_cast

class GetTaskDefinitionEphemeralStorage {
  /// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is <span pulumi-lang-nodejs="`21`" pulumi-lang-dotnet="`21`" pulumi-lang-go="`21`" pulumi-lang-python="`21`" pulumi-lang-yaml="`21`" pulumi-lang-java="`21`">`21`</span> GiB and the maximum supported value is <span pulumi-lang-nodejs="`200`" pulumi-lang-dotnet="`200`" pulumi-lang-go="`200`" pulumi-lang-python="`200`" pulumi-lang-yaml="`200`" pulumi-lang-java="`200`">`200`</span> GiB.
  final int sizeInGib;

  GetTaskDefinitionEphemeralStorage({
    required this.sizeInGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sizeInGib'] = sizeInGib;
    return map;
  }

  factory GetTaskDefinitionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionEphemeralStorage(
      sizeInGib: map['sizeInGib'] as int,
    );
  }
}
