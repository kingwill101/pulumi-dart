/// The justification type for this vulnerability.
enum JustificationJustificationTypeContaineranalysisV1alpha1 {
  justificationTypeUnspecified("JUSTIFICATION_TYPE_UNSPECIFIED"),
  componentNotPresent("COMPONENT_NOT_PRESENT"),
  vulnerableCodeNotPresent("VULNERABLE_CODE_NOT_PRESENT"),
  vulnerableCodeNotInExecutePath("VULNERABLE_CODE_NOT_IN_EXECUTE_PATH"),
  vulnerableCodeCannotBeControlledByAdversary(
    "VULNERABLE_CODE_CANNOT_BE_CONTROLLED_BY_ADVERSARY",
  ),
  inlineMitigationsAlreadyExist("INLINE_MITIGATIONS_ALREADY_EXIST");

  const JustificationJustificationTypeContaineranalysisV1alpha1(this.value);
  final String value;

  static JustificationJustificationTypeContaineranalysisV1alpha1 fromValue(
    String value,
  ) {
    for (final item
        in JustificationJustificationTypeContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown JustificationJustificationTypeContaineranalysisV1alpha1 value: $value',
    );
  }
}
