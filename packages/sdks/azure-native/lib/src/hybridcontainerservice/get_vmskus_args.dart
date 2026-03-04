// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_vmskus_args_doc}
/// Arguments for getVMSkus.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_vmskus_args_doc}
class GetVMSkusArgs {
  /// The fully qualified Azure Resource Manager identifier of the custom location resource.
  final pulumi.Input<String> customLocationResourceUri;

  /// Creates a new [GetVMSkusArgs].
  /// [customLocationResourceUri] The fully qualified Azure Resource Manager identifier of the custom location resource.
  GetVMSkusArgs({required this.customLocationResourceUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationResourceUri': customLocationResourceUri,
    };
  }

  factory GetVMSkusArgs.fromMap(Map<String, dynamic> map) {
    return GetVMSkusArgs(
      customLocationResourceUri: pulumi.Input.fromValue(
        map['customLocationResourceUri'] as String,
      ),
    );
  }
}
