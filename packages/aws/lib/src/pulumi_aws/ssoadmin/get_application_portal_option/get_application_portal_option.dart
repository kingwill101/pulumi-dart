// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_application_portal_option_sign_in_option/get_application_portal_option_sign_in_option.dart';

class GetApplicationPortalOption {
  final List<GetApplicationPortalOptionSignInOption> signInOptions;
  final String visibility;

  GetApplicationPortalOption({
    required this.signInOptions,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['signInOptions'] = Input.encodeList<
        GetApplicationPortalOptionSignInOption,
        Map<String, dynamic>>(signInOptions, (value) => value.toMap());
    map['visibility'] = visibility;
    return map;
  }

  factory GetApplicationPortalOption.fromMap(Map<String, dynamic> map) {
    return GetApplicationPortalOption(
      signInOptions: Input.decodeList<GetApplicationPortalOptionSignInOption>(
          map['signInOptions'],
          (value) => GetApplicationPortalOptionSignInOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      visibility: map['visibility'] as String,
    );
  }
}
