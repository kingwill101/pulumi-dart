// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualMachineRdpFileContents.
class GetVirtualMachineRdpFileContentsResult {
  /// The contents of the .rdp file
  final String? contents;

  /// Creates a new [GetVirtualMachineRdpFileContentsResult].
  /// [contents] The contents of the .rdp file
  GetVirtualMachineRdpFileContentsResult({
    this.contents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': ?contents,
    };
  }

  factory GetVirtualMachineRdpFileContentsResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineRdpFileContentsResult(
      contents: map['contents'] == null ? null : map['contents']! as String,
    );
  }
}

