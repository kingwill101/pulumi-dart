// ignore_for_file: unused_element, unnecessary_cast

import 'linked_service_reference_response.dart';

/// Azure ML WebService Input/Output file
class AzureMLWebServiceFileResponse {
  /// The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  final dynamic filePath;
  /// Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  final LinkedServiceReferenceResponse linkedServiceName;

  /// Creates a new [AzureMLWebServiceFileResponse].
  /// [filePath] The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  AzureMLWebServiceFileResponse({
    required this.filePath,
    required this.linkedServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
      'linkedServiceName': linkedServiceName.toMap(),
    };
  }

  factory AzureMLWebServiceFileResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLWebServiceFileResponse(
      filePath: map['filePath'],
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
    );
  }
}

