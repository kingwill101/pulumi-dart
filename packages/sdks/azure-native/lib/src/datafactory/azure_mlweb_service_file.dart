// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference.dart';

/// Azure ML WebService Input/Output file
class AzureMLWebServiceFile {
  /// The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> filePath;
  /// Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;

  /// Creates a new [AzureMLWebServiceFile].
  /// [filePath] The relative file path, including container name, in the Azure Blob Storage specified by the LinkedService. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Reference to an Azure Storage LinkedService, where Azure ML WebService Input/Output file located.
  AzureMLWebServiceFile({
    required this.filePath,
    required this.linkedServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
    };
  }

  factory AzureMLWebServiceFile.fromMap(Map<String, dynamic> map) {
    return AzureMLWebServiceFile(
      filePath: (map['filePath']).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

