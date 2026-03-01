// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceAllowedListInternetList {
  /// The allowed ip list of the internet_list.
  final List<String> allowedIpLists;
  /// The port range of the internet_list.
  final String portRange;

  /// Creates a new [GetInstancesInstanceAllowedListInternetList].
  /// [allowedIpLists] The allowed ip list of the internet_list.
  /// [portRange] The port range of the internet_list.
  GetInstancesInstanceAllowedListInternetList({
    required this.allowedIpLists,
    required this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpLists': allowedIpLists,
      'portRange': portRange,
    };
  }

  factory GetInstancesInstanceAllowedListInternetList.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceAllowedListInternetList(
      allowedIpLists: (map['allowedIpLists'] as List).cast<String>(),
      portRange: map['portRange'] as String,
    );
  }
}

