// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// Azure ML WebService Input/Output file
class AzureMLWebServiceFileResponse {
  /// The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> filePath;
  /// Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;

  /// Creates a new [AzureMLWebServiceFileResponse].
  /// [filePath] The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  const AzureMLWebServiceFileResponse({
    required this.filePath,
    required this.linkedServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
    };
  }

  factory AzureMLWebServiceFileResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLWebServiceFileResponse(
      filePath: pulumi.Input.fromValue(map['filePath']),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
    );
  }
}

