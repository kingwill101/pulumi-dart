/// This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
enum InterNodeCommunicationState {
  enabled("Enabled"),
  disabled("Disabled");

  const InterNodeCommunicationState(this.wireValue);
  final String wireValue;

  static InterNodeCommunicationState fromValue(String value) {
    for (final item in InterNodeCommunicationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterNodeCommunicationState value: $value');
  }
}

