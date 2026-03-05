/// See https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html
enum Runtime {
  dotnet6("dotnet6"),
  dotnet8("dotnet8"),
  dotnet10("dotnet10"),
  java11("java11"),
  java17("java17"),
  java21("java21"),
  java25("java25"),
  java8AL2("java8.al2"),
  nodeJS18dX("nodejs18.x"),
  nodeJS20dX("nodejs20.x"),
  nodeJS22dX("nodejs22.x"),
  nodeJS24dX("nodejs24.x"),
  customAL2("provided.al2"),
  customAL2023("provided.al2023"),
  python3d10("python3.10"),
  python3d11("python3.11"),
  python3d12("python3.12"),
  python3d13("python3.13"),
  python3d14("python3.14"),
  python3d9("python3.9"),
  ruby3d2("ruby3.2"),
  ruby3d3("ruby3.3"),
  ruby3d4("ruby3.4"),
  dotnet5d0("dotnet5.0"),
  dotnet7("dotnet7"),
  dotnetCore2d1("dotnetcore2.1"),
  dotnetCore3d1("dotnetcore3.1"),
  go1dx("go1.x"),
  java8("java8"),
  nodeJS10dX("nodejs10.x"),
  nodeJS12dX("nodejs12.x"),
  nodeJS14dX("nodejs14.x"),
  nodeJS16dX("nodejs16.x"),
  custom("provided"),
  python2d7("python2.7"),
  python3d6("python3.6"),
  python3d7("python3.7"),
  python3d8("python3.8"),
  ruby2d5("ruby2.5"),
  ruby2d7("ruby2.7");

  const Runtime(this.wireValue);
  final String wireValue;

  static Runtime fromValue(String value) {
    for (final item in Runtime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Runtime value: $value');
  }
}

