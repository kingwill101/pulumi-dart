// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsAgentChildAgentChatbot {
  /// Background color for the chatbot button
  final String? buttonBackgroundColor;
  /// Logo for the chatbot
  final String? logo;
  /// Name of the chatbot
  final String? name;
  /// Primary color for the chatbot
  final String? primaryColor;
  /// Secondary color for the chatbot
  final String? secondaryColor;
  /// Starting message for the chatbot
  final String? startingMessage;

  /// Creates a new [GetGradientaiAgentsAgentChildAgentChatbot].
  /// [buttonBackgroundColor] Background color for the chatbot button
  /// [logo] Logo for the chatbot
  /// [name] Name of the chatbot
  /// [primaryColor] Primary color for the chatbot
  /// [secondaryColor] Secondary color for the chatbot
  /// [startingMessage] Starting message for the chatbot
  GetGradientaiAgentsAgentChildAgentChatbot({
    this.buttonBackgroundColor,
    this.logo,
    this.name,
    this.primaryColor,
    this.secondaryColor,
    this.startingMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonBackgroundColor': ?buttonBackgroundColor,
      'logo': ?logo,
      'name': ?name,
      'primaryColor': ?primaryColor,
      'secondaryColor': ?secondaryColor,
      'startingMessage': ?startingMessage,
    };
  }

  factory GetGradientaiAgentsAgentChildAgentChatbot.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentChildAgentChatbot(
      buttonBackgroundColor: map['buttonBackgroundColor'] == null ? null : map['buttonBackgroundColor'] as String,
      logo: map['logo'] == null ? null : map['logo'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      primaryColor: map['primaryColor'] == null ? null : map['primaryColor'] as String,
      secondaryColor: map['secondaryColor'] == null ? null : map['secondaryColor'] as String,
      startingMessage: map['startingMessage'] == null ? null : map['startingMessage'] as String,
    );
  }
}

