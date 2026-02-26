/// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
enum ParticipantRole2 {
  roleUnspecified("ROLE_UNSPECIFIED"),
  humanAgent("HUMAN_AGENT"),
  automatedAgent("AUTOMATED_AGENT"),
  endUser("END_USER");

  const ParticipantRole2(this.value);
  final String value;

  static ParticipantRole2 fromValue(String value) {
    for (final item in ParticipantRole2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParticipantRole2 value: $value');
  }
}
