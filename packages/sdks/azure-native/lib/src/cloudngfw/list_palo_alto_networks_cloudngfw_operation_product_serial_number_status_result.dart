// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listPaloAltoNetworksCloudngfwOperationProductSerialNumberStatus.
class ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult {
  /// product Serial associated with given resource
  final String? serialNumber;

  /// allocation status of the product serial number
  final String status;

  /// Creates a new [ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult].
  /// [serialNumber] product Serial associated with given resource
  /// [status] allocation status of the product serial number
  ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult({
    this.serialNumber,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serialNumber': ?serialNumber, 'status': status};
  }

  factory ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListPaloAltoNetworksCloudngfwOperationProductSerialNumberStatusResult(
      serialNumber: (() {
        final guardedValue = map['serialNumber'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: map['status'] as String,
    );
  }
}
