/// Parsed provider plugin command line arguments.
class ParsedProviderArgs {
  const ParsedProviderArgs({required this.engineAddress});

  final String engineAddress;
}

/// Parses provider host args and strips CLI-injected logging flags.
ParsedProviderArgs? parseProviderArgs(List<String> args) {
  final cleanArgs = <String>[];

  for (var i = 0; i < args.length; i++) {
    final value = args[i];
    if (value == '--logtostderr') {
      continue;
    }
    if (value.startsWith('-v=')) {
      continue;
    }
    if (value == '--tracing') {
      i += 1;
      continue;
    }
    cleanArgs.add(value);
  }

  if (cleanArgs.isEmpty) {
    return null;
  }

  return ParsedProviderArgs(engineAddress: cleanArgs.first);
}
