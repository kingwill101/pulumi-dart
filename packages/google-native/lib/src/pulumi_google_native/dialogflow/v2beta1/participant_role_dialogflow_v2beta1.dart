/// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
enum ParticipantRoleDialogflowV2beta1 {
  roleUnspecified("ROLE_UNSPECIFIED"),
  humanAgent("HUMAN_AGENT"),
  automatedAgent("AUTOMATED_AGENT"),
  endUser("END_USER");

  const ParticipantRoleDialogflowV2beta1(this.value);
  final String value;

  static ParticipantRoleDialogflowV2beta1 fromValue(String value) {
    for (final item in ParticipantRoleDialogflowV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ParticipantRoleDialogflowV2beta1 value: $value');
  }
}
