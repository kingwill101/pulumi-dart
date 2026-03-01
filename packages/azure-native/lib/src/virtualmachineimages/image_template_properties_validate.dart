// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_file_validator.dart';

/// Configuration options and list of validations to be performed on the resulting image.
class ImageTemplatePropertiesValidate {
  /// If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  final bool? continueDistributeOnFailure;
  /// List of validations to be performed.
  final List<ImageTemplateFileValidator>? inVMValidations;
  /// If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  final bool? sourceValidationOnly;

  /// Creates a new [ImageTemplatePropertiesValidate].
  /// [continueDistributeOnFailure] If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  /// [inVMValidations] List of validations to be performed.
  /// [sourceValidationOnly] If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  ImageTemplatePropertiesValidate({
    this.continueDistributeOnFailure,
    this.inVMValidations,
    this.sourceValidationOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueDistributeOnFailure': ?continueDistributeOnFailure,
      'inVMValidations': ?inVMValidations == null ? null : pulumi.Input.encodeList<ImageTemplateFileValidator, Map<String, dynamic>>(inVMValidations!, (value) => value.toMap()),
      'sourceValidationOnly': ?sourceValidationOnly,
    };
  }

  factory ImageTemplatePropertiesValidate.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesValidate(
      continueDistributeOnFailure: map['continueDistributeOnFailure'] == null ? null : map['continueDistributeOnFailure'] as bool,
      inVMValidations: map['inVMValidations'] == null ? null : pulumi.Input.decodeList<ImageTemplateFileValidator>(map['inVMValidations'], (value) => ImageTemplateFileValidator.fromMap((value as Map).cast<String, dynamic>())),
      sourceValidationOnly: map['sourceValidationOnly'] == null ? null : map['sourceValidationOnly'] as bool,
    );
  }
}

