// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_external_safety_provider_args_doc}
/// Arguments for getRaiExternalSafetyProvider.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_external_safety_provider_args_doc}
class GetRaiExternalSafetyProviderArgs {
  /// The name of the Rai External Safety Provider associated with the Cognitive Services Account
  final pulumi.Input<String> safetyProviderName;

  /// Creates a new [GetRaiExternalSafetyProviderArgs].
  /// [safetyProviderName] The name of the Rai External Safety Provider associated with the Cognitive Services Account
  GetRaiExternalSafetyProviderArgs({
    required this.safetyProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'safetyProviderName': safetyProviderName,
    };
  }

  factory GetRaiExternalSafetyProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiExternalSafetyProviderArgs(
      safetyProviderName: (map['safetyProviderName'] as String).input(),
    );
  }
}

